// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:32 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
    r0.zw = (uint2)vThreadID.xx << int2(2,3);
    r0.xy = (int2)r0.wz + (int2)r0.xy;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyz = (int3)r0.yyy + int3(1,2,3);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xzw = t0.Load(r2.y).xyz;
    r2.xyzw = t0.Load(r2.z).wxyz;
    r5.xy = saturate(r2.zw);
    r6.xyz = r5.yyx * float3(1.875,150,0.133928999) + float3(0.125,100,-1.13392794);
    r0.y = saturate(r1.w * 0.5 + -0.5);
    r0.y = r0.y * 0.850000024 + 0.150000006;
    r7.y = r6.x * r0.y;
    r0.y = r5.x + r5.x;
    r0.z = r5.x * 2 + -3;
    r5.y = r5.x * r5.x;
    r0.z = r0.z * r5.y + 1;
    r0.z = max(0, r0.z);
    r0.z = r0.z * 0.00549999997 + 0.00124999997;
    r6.x = saturate(r3.w);
    r8.xyzw = r6.xxxx * float4(-606.270813,0.465438008,3.46666694,-1.65354002) + float4(31.8978577,0.0673879981,0.813332975,1.12071395);
    r6.w = r6.x * r6.x;
    r8.xy = r8.xy * r6.ww + r8.zw;
    r9.xyz = cmp(r6.xxx >= float3(0,0.0733330026,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r8.zw = r9.xy + r9.yz;
    r8.zw = float2(9.99999997e-007,9.99999997e-007) + r8.zw;
    r8.zw = float2(0.5,0.5) * r8.zw;
    r8.zw = frac(r8.zw);
    r8.xy = r8.zw * r8.xy;
    r8.xy = r8.xy + r8.xy;
    r8.x = saturate(r8.x + r8.y);
    r8.x = r8.x * 0.999000013 + 0.00100000005;
    r0.z = r8.x * r0.z;
    r8.x = saturate(cb0[2].x);
    r8.x = 1 + -r8.x;
    r8.xy = r8.xx * float2(0.329999983,0.800000012) + float2(0.670000017,0.200000003);
    r0.z = r8.x * r0.z;
    r8.x = saturate(cb0[3].x);
    r0.z = r8.x * r0.z;
    r8.z = saturate(cb0[4].x);
    r8.z = 1 + -r8.z;
    r7.z = r8.z * r0.z;
    r9.xyzw = r6.xxxx * float4(0,46.6472206,27.272728,90.9620743) + float4(0,-115.451866,0,-22.1574287);
    r9.xy = r9.xy * r6.ww + r9.zw;
    r10.xyzw = cmp(r6.xxxx >= float4(0,0.0366670005,0.649999976,1));
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r10.xyz = r10.xyz + r10.yzw;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r10.xz = r10.xz * r9.xy;
    r9.xy = r10.xy + r10.xy;
    r0.z = r9.x + r9.y;
    r0.z = saturate(r10.z * 2 + r0.z);
    r0.z = r0.z * r8.y;
    r8.y = r8.x * 100.000099 + -99.0000992;
    r8.xw = cmp(r8.xx >= float2(0.99000001,1));
    r9.yw = r8.xw ? float2(1,1) : 0;
    r8.xw = r9.yw + r9.ww;
    r8.xw = float2(9.99999997e-007,9.99999997e-007) + r8.xw;
    r8.xw = float2(0.5,0.5) * r8.xw;
    r9.yz = frac(r8.xw);
    r9.x = r9.y * r8.y;
    r8.xy = float2(2,2) * r9.xz;
    r8.x = r8.x + r8.y;
    r8.x = saturate(r9.w * 1 + r8.x);
    r0.z = r8.x * r0.z;
    r7.w = r0.z * r8.z;
    r8.xyzw = r6.xxxx * float4(17.8480759,0.0180890001,-4.82432508,-0.357360989) + float4(0.992793977,0.131810993,1,0.207460999);
    r8.xy = r8.xy * r6.ww + r8.zw;
    r9.xyz = cmp(r6.xxx >= float3(0,0.273333013,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r6.xw = r9.xy + r9.yz;
    r6.xw = float2(9.99999997e-007,9.99999997e-007) + r6.xw;
    r6.xw = float2(0.5,0.5) * r6.xw;
    r6.xw = frac(r6.xw);
    r6.xw = r6.xw * r8.xy;
    r6.xw = r6.xw + r6.xw;
    r0.z = saturate(r6.x + r6.w);
    r8.x = r6.y * r0.z;
    r0.y = saturate(r6.z * r5.y + r0.y);
    r6.xyz = r0.yyy * float3(0,-0.135608017,-0.0115029998) + float3(1,0.337164015,0.0497069992);
    r5.z = 0.349999994;
    r5.w = cb0[5].w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.zzxw
    r9.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.yyyy, r3.xyzw
    r6.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.zzzz, r6.xyzw
    r4.xy = r5.xw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.wwww, r4.xyzw
    r0.yzw = (int3)r0.xxx + int3(5,6,7);
    r7.x = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r7.xyzw
    r8.yzw = r2.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r8.xyzw
    r2.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}