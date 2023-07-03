// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:25 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyz = (int3)r0.yyy + int3(1,2,3);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xwyz;
    r0.yz = t0.Load(r2.z).xy;
    r2.x = saturate(r1.w);
    r5.xyzw = r2.xxxx * float4(0,633.103271,15.9691162,1.450863) + float4(0,-99.9708252,-10.4739227,-2.5933609);
    r6.xyzw = r2.xxxx * float4(16.5817337,7.99419689,3.62891603,2.19626808) + float4(0,0.0506860018,0.122795001,0.210247993);
    r7.xyzw = r2.xxxx * float4(0.153933004,-0.294095993,1.50990403,0.496670008) + float4(-0.970156014,0.192871004,0.308346987,0.604618013);
    r2.y = r2.x * r2.x;
    r5.xyzw = r5.xyzw * r2.yyyy + r6.xyzw;
    r2.zw = r7.xy * r2.yy + r7.zw;
    r6.xyzw = cmp(r2.xxxx >= float4(0,0.00555599993,0.0555559993,0.200000003));
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = cmp(r2.xxx >= float3(0.427778006,0.866666973,1));
    r8.xyw = r7.xyz ? float3(1,1,1) : 0;
    r6.xyz = r6.xyz + r6.yzw;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r5.xyz = r6.xyz * r5.xyz;
    r6.xyz = r8.xyw + r8.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r2.zw = r6.xy * r2.zw;
    r6.x = 2;
    r5.xy = r6.xx * r5.xy;
    r2.zw = float2(2,2) * r2.zw;
    r5.x = r5.x + r5.y;
    r5.x = r6.x * r5.z + r5.x;
    r5.x = r5.w * r6.w + r5.x;
    r2.z = r2.z + r2.w;
    r2.z = r6.z * 2 + r2.z;
    r2.z = r8.w * 1 + r2.z;
    r2.z = saturate(r7.x ? r2.z : r5.x);
    r5.w = r2.z * 0.699999988 + 0.0500000007;
    r6.xyzw = r2.xxxx * float4(0,-355.229492,-22.3005371,-3.21990204) + float4(0,82.3873596,16.8900452,6.79430389);
    r7.xyzw = r2.xxxx * float4(-12.3971052,-10.1499023,-5.86216021,-4.06586981) + float4(1,0.945689976,0.852141976,0.74446398);
    r8.xyz = r2.xxx * float3(1.73480201,-2.19499207,0.0149670001) + float3(1.54370105,0.52045399,0.985032976);
    r6.xyzw = r6.xyzw * r2.yyyy + r7.xyzw;
    r2.z = r8.x * r2.y + r8.y;
    r7.xyzw = cmp(r2.xxxx >= float4(0,0.0157210007,0.0741129965,0.188651994));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r9.xyzw = cmp(r2.xxxx >= float4(0.348109007,0.404255003,0.988888979,1));
    r10.xyzw = r9.xwyz ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xyz = r7.xyz * r6.xyz;
    r7.xyz = r10.xwy + r10.zyy;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r2.w = 2;
    r6.xy = r2.ww * r6.xy;
    r2.z = dot(r7.xx, r2.zz);
    r6.x = r6.x + r6.y;
    r2.w = r2.w * r6.z + r6.x;
    r2.w = r6.w * r7.w + r2.w;
    r2.z = saturate(r9.x ? r2.z : r2.w);
    r6.x = 1.55799997 * r2.z;
    r11.xyzw = r2.xxxx * float4(1.49296403,-4.52658796,-2.10488105,1.56652999) + float4(1.32714903,7.22701979,1.77679396,-5.966465);
    r12.xyzw = r2.xxxx * float4(0,-1.86363196,1.85710895,7.24231005) + float4(0,0.191317007,-0.610275984,-1.84229398);
    r11.xyzw = r11.xyzw * r2.yyyy + r12.xyzw;
    r12.xyzw = cmp(r2.xxxx >= float4(0,0.283333004,0.527778029,0.755555987));
    r12.xyzw = r12.xyzw ? float4(1,1,1,1) : 0;
    r8.xyw = r12.xyz + r12.yzw;
    r8.xyw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyw;
    r8.xyw = float3(0.5,0.5,0.5) * r8.xyw;
    r8.xyw = frac(r8.xyw);
    r8.xyw = r8.xyw * r11.xyz;
    r2.w = r7.y * r8.z;
    r6.y = 2;
    r7.xy = r6.yy * r8.xy;
    r2.w = 2 * r2.w;
    r6.w = r7.x + r7.y;
    r6.y = r6.y * r8.w + r6.w;
    r6.y = r11.w * r12.w + r6.y;
    r2.w = r7.z * 4 + r2.w;
    r2.w = r10.y * 1 + r2.w;
    r2.w = saturate(r9.z ? r2.w : r6.y);
    r2.w = 1 + r2.w;
    r5.xy = r2.ww * float2(1,-0.5) + float2(0,0.5);
    r7.xyzw = r2.xxxx * float4(114.545898,103.313965,73.9375,0) + float4(-56.0558472,-54.302002,-45.5144653,0);
    r8.xyzw = r2.xxxx * float4(11.2566166,11.087616,10.1673279,1.24382806) + float4(0,0.00522099994,0.0383209996,0.602061987);
    r9.xyzw = r2.xxxx * float4(4.20391798,0.171196997,2.40285206,0.614138007) + float4(-5.21758986,-0.547197998,0.535674989,0.761862993);
    r7.xyzw = r7.xyzw * r2.yyyy + r8.xyzw;
    r6.yw = r9.xy * r2.yy + r9.zw;
    r8.xyzw = cmp(r2.xxxx >= float4(0,0.0468220003,0.0907780007,0.149067));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = cmp(r2.xxx >= float3(0.172000006,0.425000012,1));
    r10.xyw = r9.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xyz = r8.xyz * r7.xyz;
    r8.xyz = r10.xyw + r10.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r6.yw = r8.xy * r6.yw;
    r2.w = 2;
    r7.xy = r2.ww * r7.xy;
    r6.yw = float2(2,2) * r6.yw;
    r7.x = r7.x + r7.y;
    r2.w = r2.w * r7.z + r7.x;
    r2.w = r7.w * r8.w + r2.w;
    r6.y = r6.y + r6.w;
    r6.y = r8.z * 2 + r6.y;
    r6.y = r10.w * 1 + r6.y;
    r2.w = saturate(r9.x ? r6.y : r2.w);
    r7.xyz = r2.www * float3(0.699999988,0.699999988,0.699999988) + float3(0.300000012,0.300000012,0.300000012);
    r2.w = saturate(r4.y);
    r2.w = r2.w * 0.049999997 + 0.200000003;
    r6.y = saturate(cb0[2].x);
    r6.y = 1 + -r6.y;
    r6.y = r6.y * 0.350000024 + 0.649999976;
    r8.x = r6.y * r2.w;
    r9.xyzw = r2.xxxx * float4(41.2520447,-0.133653,-1.60603905,-0.624285996) + float4(-16.8297577,0.494765013,1.00000203,0.263173997);
    r6.yw = r9.xy * r2.yy + r9.zw;
    r9.xyzw = cmp(r2.xxxx >= float4(0,9.99999997e-007,0.305000007,1));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r9.yz = r9.yz * r6.yw;
    r6.yw = r9.xy + r9.xy;
    r2.w = r6.y + r6.w;
    r8.y = saturate(r9.z * 2 + r2.w);
    r9.xyzw = r2.xxxx * float4(1312.97205,-0.0250829998,0,-0.203171998) + float4(-221.351334,0.139210999,1,0.0890439972);
    r2.yw = r9.xy * r2.yy + r9.zw;
    r9.xyz = cmp(r2.xxx >= float3(0,0.112000003,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r6.yw = r9.xy + r9.yz;
    r6.yw = float2(9.99999997e-007,9.99999997e-007) + r6.yw;
    r6.yw = float2(0.5,0.5) * r6.yw;
    r6.yw = frac(r6.yw);
    r2.xy = r6.yw * r2.yw;
    r2.xy = r2.xy + r2.xy;
    r2.x = saturate(r2.x + r2.y);
    r2.xy = float2(-0,-0.5) + r2.xx;
    r2.xy = saturate(r2.xy + r2.xy);
    r2.xy = float2(9,490) * r2.xy;
    r2.x = dot(float2(1,1), r2.xy);
    r8.z = 1 + r2.x;
    r0.x = (int)r0.w + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, l(1.000000,1.000000,0,0)
    r9.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r6.z = -r2.z * 0.778999984 + 0.5;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.xxxx, r6.xxzz
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.zzzz, r3.xyzw
    r7.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.wwww, r7.xyzw
    r1.xyz = (int3)r0.xxx + int3(5,6,7);
    r5.z = r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r5.xyzw
    r8.w = r4.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r8.xyzw
    r4.xzw = r0.zyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r4.xyzw
  }
  return;
}