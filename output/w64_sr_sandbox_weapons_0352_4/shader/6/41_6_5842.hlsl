// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:26 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).wxyz;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.y = t0.Load(r2.w).x;
    r0.y = saturate(r5.x);
    r6.xyzw = r0.yyyy * float4(-0.236842006,-2.23684192,5,-0.597958028) + float4(1.47368503,1,4,2.11147189);
    r0.z = r0.y * r0.y;
    r0.w = saturate(r6.x * r0.z + r6.y);
    r0.w = r0.w * 0.0240000002 + 0.00100000005;
    r6.x = saturate(cb0[2].y * 0.142857 + -1.14285696);
    r6.x = r6.x * 0.75 + 0.25;
    r0.w = r6.x * r0.w;
    r6.x = saturate(r3.w);
    r7.xyzw = r6.xxxx * float4(0.171669006,-1.70588195,17.8480759,0.0180890001) + float4(0.534213006,1,0.992793977,0.131810993);
    r6.y = r6.x * r6.x;
    r7.x = saturate(r7.x * r6.y + r7.y);
    r7.x = r7.x * 0.999000013 + 0.00100000005;
    r8.z = r7.x * r0.w;
    r7.xy = r6.xx * float2(-4.82432508,-0.357360989) + float2(1,0.207460999);
    r7.xy = r7.zw * r6.yy + r7.xy;
    r9.xyz = cmp(r6.xxx >= float3(0,0.273333013,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r6.xy = r9.xy + r9.yz;
    r6.xy = float2(9.99999997e-007,9.99999997e-007) + r6.xy;
    r6.xy = float2(0.5,0.5) * r6.xy;
    r6.xy = frac(r6.xy);
    r6.xy = r6.xy * r7.xy;
    r6.xy = r6.xy + r6.xy;
    r0.w = saturate(r6.x + r6.y);
    r6.xy = float2(-0,-0.5) + r0.ww;
    r6.xy = saturate(r6.xy + r6.xy);
    r6.xy = float2(250,750) * r6.xy;
    r0.w = dot(float2(1,1), r6.xy);
    r6.x = saturate(3 * r1.w);
    r7.xy = r6.xx * float2(-0.351350993,-2.35135102) + float2(1.702703,1);
    r6.x = r6.x * r6.x;
    r6.x = saturate(r7.x * r6.x + r7.y);
    r6.x = r6.x * r6.z + 1;
    r8.w = r6.x * r0.w;
    r0.y = r0.y * -2.51351404 + 1;
    r0.y = saturate(r6.w * r0.z + r0.y);
    r6.xyz = r0.yyy * float3(0.286994994,0.092817001,0.133359998) + float3(0.0446310006,0.0304879993,0.346349001);
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r6.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r8.xy = r4.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r8.xyzw
    r4.yzw = r5.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
    r0.y = (int)r0.x + 5;
    r2.x = r5.w;
    r2.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  }
  return;
}