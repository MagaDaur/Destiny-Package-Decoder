// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:59 2023
Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[158];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.z = (uint)vThreadID.x << 2;
    r0.xy = (int2)r0.zz + (int2)r0.xy;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyz = (int3)r0.yyy + int3(1,2,3);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r2.xyzw = t0.Load(r2.z).xyzw;
    r0.y = cb0[22].x / r4.z;
    r0.w = 0.141592994 * r4.y;
    r5.x = cb13[0].x * 0.5 + r0.w;
    r0.w = saturate(r1.w);
    r6.xyzw = r0.wwww * float4(-21.9478455,0.272157997,6.16666698,1.24129796) + float4(-8.70372009,-1.02153206,0,0.508077025);
    r5.w = r0.w * r0.w;
    r6.xy = r6.xy * r5.ww + r6.zw;
    r7.xyz = cmp(r0.www >= float3(0,0.180000007,1));
    r7.xyw = r7.xyz ? float3(1,1,1) : 0;
    r7.xyz = r7.xyw + r7.yww;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xy = r7.xy * r6.xy;
    r6.xy = float2(2,2) * r6.xy;
    r5.w = r6.x + r6.y;
    r5.w = r7.z * 2 + r5.w;
    r5.w = saturate(r7.w * 1 + r5.w);
    r5.w = 4 * r5.w;
    r0.w = r0.w * 7 + 3;
    r6.w = r1.w + r0.y;
    r5.yz = float2(0,0);
    r5.xyz = -r5.xyz + r3.xyz;
    r5.xyz = r5.xyz * float3(0.416666657,0.416666657,0.416666657) + float3(0.5,0.5,0.5);
    r5.xyz = t1.SampleLevel(s1_s, r5.xyz, 0).xyz;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.xyz = r5.xyz * r5.www;
    r5.xyz = cb0[22].xxx * r5.xyz;
    r1.xyz = r5.xyz * float3(2,2,2) + r1.xyz;
    r5.xyz = cb0[156].xyz * cb0[155].xxx;
    r1.xyz = r5.xyz * float3(-0.100000001,-0.100000001,-0.100000001) + r1.xyz;
    r0.y = saturate(cb0[157].x * r0.w);
    r0.y = 1 + -r0.y;
    r6.xyz = r1.xyz * r0.yyy;
    r3.xyz = r6.xyz * cb0[146].xxx + r3.xyz;
    r0.y = cb0[157].x * r3.w;
    r4.x = r0.y * 6.28318548 + r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}